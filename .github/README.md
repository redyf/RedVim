<h1 align="center">
<a href='#'><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/></a>
  <br>
  <br>
  <div>
    <a href="https://github.com/Redyf/RedVim/issues">
        <img src="https://img.shields.io/github/issues/Redyf/RedVim?color=fab387&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/Redyf/RedVim/stargazers">
        <img src="https://img.shields.io/github/stars/Redyf/RedVim?color=ca9ee6&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/Redyf/RedVim">
        <img src="https://img.shields.io/github/repo-size/Redyf/RedVim?color=ea999c&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/Redyf/RedVim/blob/main/.github/LICENCE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=ca9ee6&colorA=313244&colorB=cba6f7"/>
    </a>
    <br>
    </div>
   </h1>
   <br>

<h1 align="center">🩸 RedVim 🩸</h1>
<h2 align="center">Minha configuração personalizada do <a href="https://nvchad.com/">NvChad</a>. Sinta-se livre para explorar!</h2>
<h3 align="center">

Features Completely remade <a href="https://github.com/jabuti-theme">jabuti-theme</a> with base46 for NvChad
![image](https://github.com/Redyf/RedVim/assets/98139059/76c83767-7ab1-4f75-b418-8da0f2b3e4c8)
Catppuccin Built-in theme
![image](https://github.com/Redyf/RedVim/assets/98139059/3df08f0f-e6b6-416f-9edf-4201f0b88567)

</h3>
<hr>

O RedVim é uma configuração personalizada para o Neovim, baseada no projeto NvChad, que oferece uma experiência poderosa de edição de texto com o Vim. Esta configuração visa fornecer um ambiente de desenvolvimento eficiente, altamente customizável e repleto de recursos para melhorar sua produtividade.

## Vantagens do Vim sobre editores populares

- **Eficiência:** O Vim é conhecido por sua eficiência no uso do teclado, permitindo que você realize tarefas complexas com poucos comandos. Seu fluxo de trabalho orientado pelo teclado pode economizar tempo e aumentar sua produtividade.

- **Customização:** O Vim oferece um alto grau de customização, permitindo que você adapte o editor às suas preferências e necessidades. Com o RedVim, você pode personalizar facilmente sua configuração, escolher plugins e temas, e ajustar o comportamento do editor de acordo com suas preferências.

- **Extensibilidade:** O Vim possui uma vasta coleção de plugins e recursos disponíveis, permitindo que você estenda suas funcionalidades e integre-o com outras ferramentas. Com o RedVim, você terá acesso a uma seleção de plugins populares pré-configurados para melhorar sua experiência de edição.

## Instalação

Siga estes passos para instalar o RedVim:

1. Certifique-se de ter o Neovim instalado em seu sistema. Consulte a documentação oficial do Neovim para obter instruções de instalação específicas para sua plataforma.

2. Siga o processo de instalação do <a href="https://nvchad.com/docs/quickstart/install">NvChad</a> para poder atualizar o a configuração do editor quando necessário.

3. Clone este repositório para o diretório de configuração do Neovim. No Linux e macOS, o caminho típico é `~/.config/nvim/lua/custom/`. No Windows, é `~/AppData/Local/nvim/`.

4. Abra o Neovim. Serão instalados automaticamente os plugins necessários pela configuração RedVim. Aguarde até que todos os plugins sejam baixados e instalados.

5. Reinicie o Neovim para carregar a configuração RedVim completamente.

## Configuração

O RedVim é altamente customizável. Aqui estão alguns arquivos importantes para configurar o seu ambiente:

- `init.lua`: Este arquivo contém a configuração principal do RedVim. Você pode personalizar atalhos de teclado, configurações globais, comportamentos do editor e muito mais.

- `custom/plugins.lua`: Neste arquivo, você pode adicionar ou remover plugins e ajustar suas configurações específicas.

- `custom/configs/lspconfig.lua`: Aqui você pode configurar os Language Servers de sua preferência.

- `custom/configs/null-ls.lua`: Suporte para recursos avançados, como IntelliSense, linting, formatting e code-actions.

- `custom/mappings.lua`: Este arquivo contém as definições de mapeamentos de teclas personalizados. Você pode adicionar seus próprios atalhos de teclado para melhorar sua produtividade.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue para relatar problemas, sugerir melhorias ou enviar pull requests para adicionar novos recursos ao RedVim.

## Licença

Este projeto é licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](LICENSE) para obter mais detalhes.
