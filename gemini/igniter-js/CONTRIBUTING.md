# Contributing to Igniter.js Gemini Extension

Thank you for your interest in contributing to the Igniter.js extension for Gemini CLI!

## Development Setup

1. Clone the repository:
```bash
git clone https://github.com/igniter-js/gemini-extension.git
cd gemini-extension
```

2. Install locally for testing:
```bash
gemini extensions install ./path/to/igniter-extension --consent
```

3. Test the extension:
```bash
gemini extensions list
```

## Making Changes

1. Make your changes to the extension files
2. Update version in `gemini-extension.json` if needed
3. Test locally before submitting

## Publishing

To publish this extension:

1. Create a GitHub repository
2. Push the code
3. Update the repository URL in `gemini-extension.json`
4. Submit to the [Gemini CLI Extensions Gallery](https://geminicli.com/extensions/)

## Structure

- `gemini-extension.json`: Extension manifest and configuration
- `README.md`: User-facing documentation
- `GEMINI.md`: Context and guidelines for AI assistants
- `LICENSE`: MIT License
- `.gitignore`: Git ignore rules

## Questions?

Open an issue on GitHub or reach out to the Igniter.js community.

