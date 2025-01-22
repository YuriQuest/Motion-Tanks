# Estrutura padrão de pastas do Template
/MeuJogo
│
├── /assets                # Recursos do jogo
│   ├── /images            # Imagens (sprites, texturas)
│   ├── /sounds            # Sons (efeitos sonoros, músicas)
│   ├── /fonts             # Fontes personalizadas
│   └── /models            # Modelos 3D (se aplicável)
│
├── /scenes                # Cenas ou níveis do jogo
│   ├── Main.tscn          # Cena principal
│   ├── Menu.tscn          # Cena de menu
│   └── GameOver.tscn      # Cena de fim de jogo
│
├── /scripts               # Scripts do jogo
│   ├── Player.gd          # Script do jogador
│   ├── Enemy.gd           # Script dos inimigos
│   └── GameManager.gd     # Script de gerenciamento do jogo
│
├── /ui                    # Interface do usuário
│   ├── HUD.tscn           # Cena da interface do usuário
│   └── Buttons.gd         # Scripts para botões da UI
│
├── /export                # Pasta para exportação do jogo
│   ├── /html5             # Exportação para HTML5 (itch.io)
│   └── /desktop           # Exportações para desktop (Windows, Linux, etc.)
│
├── .gitignore             # Arquivo para ignorar arquivos desnecessários no GitHub
├── README.md              # Documentação principal do projeto no GitHub
└── workflow.yml           # Script de workflow para CI/CD (opcional)
