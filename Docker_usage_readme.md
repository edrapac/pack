## Usage with docker
You can test out the rulegens with the test_pwds for example. test_pwds are from a small hashmob wordlist

```
docker build -t pack .
docker run --rm -v "$PWD":/app pack python rulegen.py -q your_password_file -b your-password-file-rulegen 
```