</br>
</br>
<div align="center">
  <a href="https://simplepdf.eu" target="_blank">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://cdn.simplepdf.eu/simple-pdf/assets/simplepdf-github-white.png">
    <img src="https://cdn.simplepdf.eu/simple-pdf/assets/simplepdf-github.png" width="280" alt="Logo"/>
  </picture>
  </a>
</div>
<h1 align="center">PDF Filler with Robocorp Assistant</h1>
<div align="center">
A Robocorp assistant that automatically sends PDFs to Robocorp Control Room for processing once filled using SimplePDF.eu.
</div>
</br>
<div align="center">
  <a href="https://github.com/SimplePDF/simplepdf-embed/blob/main/LICENSE.md">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="PDF Filler with Robocorp Assistant is released under the MIT license." />
  </a>
  <a href="https://twitter.com/intent/tweet?text=SimplePDF+with+Robocorp+assistant!&url=https://github.com/SimplePDF/pdf-filler-with-robocorp-assistant">
    <img src="https://img.shields.io/twitter/url/http/shields.io.svg?style=social" alt="Tweet" />
  </a>
</div>
</br>
</br>
<p align="center">
<br />
<a href="https://simplepdf.eu" rel="dofollow"><strong>Read more about SimplePDF »</strong></a>
<br />
<br/>
<a href="https://discord.gg/TvRFMCTN">Join Our Discord</a>
  ·
<a href="https://twitter.com/simple_pdf">Follow us on Twitter</a>
</p>

## What is it?

A Robocorp Assistant that allows to fill and edit PDFs and automatically send them for processing to Robocorp Control Room.

Think: customer support, customer success, etc...


## Show Me!

https://user-images.githubusercontent.com/10613140/222983839-42379ecb-e5b3-4d97-822b-5ecb72a41b83.mp4


# How to use the PDF Filler with Robocorp Assistant

1. Clone this repository
2. Modify the `VARIABLES` in the `tasks.robot` file
_You should replace the `COMPANY_IDENTIFIER` with your own, and specify the files you want to display in the dropdown_
3. [Connect the PDF Filler to your Robocorp Control Room](#How-to-connect-the-PDF-Filler-to-your-Robocorp-Control-Room)


## Via User-Interface (for technical and non-technical users)

_Prerequisites_:

- [A Robocorp account](https://robocorp.com) – necessary to download the assistant, **available under the free plan without needing to provide a credit card**
- [Robocorp Assistant](https://robocorp.com/docs/control-room/configuring-assistants/installation)

Once downloaded and installed, click on _Install a community assistant_ and paste in the URL of this repository: `https://github.com/SimplePDF/pdf-filler-with-robocorp-assistant`.

## Via Command-Line (for technical users)

_Prerequisite_:

- [RCC](https://github.com/robocorp/rcc)

Place yourself at the root of this folder and run the following command:

```bash
rcc run
```

# How to connect the PDF Filler to your Robocorp Control Room

1. Create a `FREE` [SimplePDF.eu](https://simplePDF.eu/pricing) account
2. Configure the Robocorp Integration
3. Replace the `COMPANY_IDENTIFIER` (`yourcompany`) **with your own**
4. That's it! Any document filled using this assistant will automatically be sent to **Control Room** for processing!