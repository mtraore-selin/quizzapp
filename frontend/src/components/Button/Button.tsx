import styles from "./Button.module.css";

type ButtonProps = {
  type?: "button" | "submit" | "reset";
  onClick?: () => void;
  className?: string;
  children?: React.ReactNode;
  variant?: "primary" | "secondary" | "danger"; // Option to specify button color variant
  disabled?: boolean; // Option to disable the button
};

const Button = ({
  type = "button",
  className,
  onClick,
  children,
  variant = "primary",
  disabled = false,
}: ButtonProps) => (
  <button
    type={type}
    className={[className, styles.button, styles[`button-${variant}`]].join(
      " "
    )}
    onClick={onClick}
    disabled={disabled}
  >
    {children}
  </button>
);

export default Button;
