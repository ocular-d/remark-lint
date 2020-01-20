<!-- PROJECT LOGO -->

<br />
<p align="center">
  <a href="https://github.com/ocular-d/remark-lint">
    <img src="docs/assets/ocular-d-logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Remark-Lint</h3>

  <p align="center">
    Docker Container For Remark-Lint With Custom Configuration
    <br />
    <a href="https://ocular-d.github.io/remark-lint/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ocular-d/ocld/remark-lint">Report Bug</a>
    ·
    <a href="https://github.com/ocular-d/ocld/remark-lint">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about)
- [Dependencies](#dependencies)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Credits](#credits)

## About

Docker image for Markdown code style linter [remark-lint](https://github.com/remarkjs/remark-lint "Link to remark-lint on GitHub").

This container comes configured with the [ocular-d preset](https://github.com/ocular-d/remark-preset-lint-ocular-d "Link to ocular-d preset on GitHub").

It is used to showcase *Docs As Code* and *DocOps*.

## Dependencies

- [Docker](https://www.docker.com/ "Link to Website of Docker")

## Getting Started

Pull the image from [Docker Hub](https://hub.docker.com/r/testthedocs/remark-lint "Link to image on Docker Hub")


```shell
docker pull testthedocs/remark-lint:0.0.1
```

## Usage

Go to your folder with markdown files you want to lint and run

```shell
docker run --rm -i -v $PWD:/app/input:ro testthedocs/remark-lint:0.0.1 .
```

### Rule Customization

In case you want to customize rules like `maximum-line-length` you can find
examples of configuration in JSON and YAML in the `examples` folder. All you
need to do is copy it to your project root and customize.

See list of all rules in [remark-lint/packages](https://github.com/remarkjs/remark-lint/tree/master/packages "Link to rules").

### Continuous Integration

An option `-f` or `--frail` can be useful for exiting with code `1` in case of any warning in your CI.

## Contributing

We are a community effort, and everybody is most welcome to participate!

Be it filing bugs, formulating enhancements, creating pull requests, or any other means of contribution, we encourage contributions from everyone.

## License

- [MIT](https://opensource.org/licenses/MIT "Link to MIT license on opensource.org")

## Credits

- [Vlastimil Zeman](https://github.com/zemanlx "Link GitHub profile of Vlastimil")
