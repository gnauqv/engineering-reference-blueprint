<!--
Không bắt buộc nhưng nên có.
Đối với repository private ===> Không cần
Đối với repository public ===> Nên có
-->
# Normalize text files to LF when committed.
* text=auto eol=lf

# Common source/documentation files are text.
*.md text
*.txt text
*.json text
*.yml text
*.yaml text
*.xml text
*.html text
*.css text
*.scss text
*.js text
*.jsx text
*.ts text
*.tsx text
*.py text
*.java text
*.sql text
*.sh text

# Images and other binary assets should not be treated as text.
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary
*.webp binary
*.ico binary
*.pdf binary
*.zip binary
