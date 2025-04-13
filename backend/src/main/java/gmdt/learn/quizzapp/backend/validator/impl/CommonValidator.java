package gmdt.learn.quizzapp.backend.validator.impl;

import org.springframework.stereotype.Service;

import gmdt.learn.quizzapp.backend.exception.BadRequestException;
import gmdt.learn.quizzapp.backend.utils.StringUtils;

import java.util.UUID;

@Service
public class CommonValidator {

    public UUID validateMandatoryUUID(String value) {
        if (StringUtils.isBlank(value)) {
            throw new BadRequestException("id", "Obligatoire");
        }
        if (!isValidUuid(value)) {
            throw new BadRequestException("id", "UUID non valide");
        }
        return UUID.fromString(value);
    }

    public Integer validateMandatoryInteger(String value, String name) {
        if (StringUtils.isBlank(value)) {
            throw new BadRequestException(name, "Obligatoire");
        }
        if (!isValidInteger(value)) {
            throw new BadRequestException(name, "Entier non valide");
        }
        return Integer.parseInt(value);
    }

    public String validateMandatoryString(String value, String name) {
        if (StringUtils.isBlank(value)) {
            throw new BadRequestException(name, "Obligatoire");
        }
        return value;
    }

    private boolean isValidUuid(String value) {
        try {
            UUID.fromString(value);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean isValidInteger(String value) {
        try {
            Integer.parseInt(value);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
