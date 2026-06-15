# Dokan Multivendor Marketplace Stubs

[![Latest Version](https://img.shields.io/packagist/v/mralaminahamed/dokan-stubs.svg?color=4CC61E&style=flat-square)](https://packagist.org/packages/mralaminahamed/dokan-stubs)
[![Downloads](https://img.shields.io/packagist/dt/mralaminahamed/dokan-stubs.svg?style=flat-square)](https://packagist.org/packages/mralaminahamed/dokan-stubs/stats)
[![License](https://img.shields.io/packagist/l/mralaminahamed/dokan-stubs.svg?style=flat-square)](./LICENSE)
[![PHP Version](https://img.shields.io/packagist/php-v/mralaminahamed/dokan-stubs.svg?style=flat-square)](./composer.json)
[![Tweet](https://img.shields.io/badge/Tweet-share-1da1f2?style=flat-square&logo=twitter)](https://twitter.com/intent/tweet?text=Check%20out%20Dokan%20Multivendor%20Marketplace%20Stubs%20for%20IDE%20completion%20and%20static%20analysis%20https%3A%2F%2Fgithub.com%2Fmralaminahamed%2Fphpstan-dokan-stubs)

PHP stub declarations for the [Dokan Multivendor Marketplace](https://wedevs.com/dokan/) plugin to enhance IDE completion and static analysis capabilities. Generated using [php-stubs/generator](https://github.com/php-stubs/generator) directly from the source code.

## 🚀 Features

- Complete function, class, and interface declarations
- Constant definitions for proper static analysis
- IDE autocompletion support
- PHPStan integration
- Regular updates with latest Dokan plugin versions

## 📋 Requirements

- PHP >= 7.4
- Composer for dependency management

## 📦 Installation

### Via Composer (Recommended)

```bash
# Install as a development dependency
composer require --dev mralaminahamed/dokan-stubs

# Or specify a version
composer require --dev mralaminahamed/dokan-stubs:^2.0
```

### Manual Installation

Download the stub files directly:
- [dokan-stubs.php](https://raw.githubusercontent.com/mralaminahamed/phpstan-dokan-stubs/main/dokan-stubs.php)
- [dokan-constants-stubs.php](https://raw.githubusercontent.com/mralaminahamed/phpstan-dokan-stubs/main/dokan-constants-stubs.php)

## 🔧 Basic Configuration

To use these stubs with PHPStan or your IDE, see our [Usage Guide](./docs/usage.md) for detailed instructions.

## 🔍 Quick Usage Example

```php
<?php
// Your code will now have full IDE support
$dokan = dokan();

// Access the main template class
$template = new Dokan_Template_Main();

// Constants are properly defined
if (DOKAN_PLUGIN_VERSION) {
    // Your implementation
}
```

For advanced usage examples, see the [Usage Guide](./docs/usage.md).

## 📁 Package Structure

```
phpstan-dokan-stubs/
├── configs/                           # Configuration files for stub generation
├── dokan-constants-stubs.php          # Constants stub file
├── dokan-stubs.php                    # Main stubs file with classes and functions
├── phpstan.neon                       # PHPStan configuration
├── source/                            # Source for generating stubs
└── tests/                             # Test files
    ├── bootstrap.php                  # Test bootstrap
    ├── ConstantsTest.php              # Constants tests
    └── DokanTest.php                  # Dokan tests
```

## 🛠 Development

For information on building stubs, running tests, and contributing to the project, please see our [Contributing Guide](./docs/contributing.md).

## 📚 Documentation

For more detailed information, check out our documentation:

- [Usage Guide](./docs/usage.md)
- [Contributing Guide](./docs/contributing.md)
- [Dokan Plugin Documentation](https://wedevs.com/docs/dokan/)
- [PHPStan Documentation](https://phpstan.org/user-guide/getting-started)
- [PHP Stubs Generator Documentation](https://github.com/php-stubs/generator)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## 🙏 Acknowledgments

- [Dokan Team](https://wedevs.com/dokan/) for the Multivendor Marketplace plugin
- [php-stubs/generator](https://github.com/php-stubs/generator) for the stub generation tools
- All [contributors](https://github.com/mralaminahamed/phpstan-dokan-stubs/graphs/contributors) to this project

## 💬 Support

For bug reports and feature requests, please use the [GitHub Issues](https://github.com/mralaminahamed/phpstan-dokan-stubs/issues).

For questions and discussions, please use the [GitHub Discussions](https://github.com/mralaminahamed/phpstan-dokan-stubs/discussions).

---
