---
paths:
    - "/src/web-api/**/*"
---

# Web API Specification

## Route naming conventions
- Follow the RESTful API naming conventions
- Put a version in the route

## Response codes
- Use HTTP status codes
- Use consistent response formats
  - Success: { data: {...} }
  - Failure: { error: {...} }

## Security
- Use HTTPS
- Use authentication if information is sensitive
- All request parameters must be authenticated
- Error messages must not be disclosed as internal information