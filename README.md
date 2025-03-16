# Simple Bash Password Generator

## Overview
Generates a random password using `/dev/urandom`. 

## Usage

1. Make the script executable:
   ```bash
   chmod +x generate_password.sh
   ```

2. Run the script:
   ```bash
   ./generate_password.sh
   ```

3. Follow the prompts:
   - Enter a desired password length (default is 16 if left blank).
   - Choose a character set:
     - **1**: Letters only (A-Z, a-z)
     - **2**: Letters and numbers (A-Z, a-z, 0-9)
     - **3**: Letters, numbers, and symbols (A-Z, a-z, 0-9, special characters) (default)

## Example Output
```
Enter password length (default is 16): 20
Choose character set:
1) Letters only
2) Letters and numbers
3) Letters, numbers, and symbols (default)
Enter choice (1-3): 3


&kT9v%fGq$h@X!mJ2w

```
