# mvvm_architecture_flutter

Example of the MVVM architecture pattern

### PTBR

Esse padrão de arquitetura separa a camada de logica de negocio (Model) da interface do usuário (
View) usando uma camada intermediária (ViewModel).

Model:

Representa a lógica de negócios e a fonte de dados da aplicação. Ela não tem conhecimento do resto
das camadas do aplicativo.

View:

Responsável pela interface gráfica do aplicativo e pela exibição dos dados.

ViewModel:

Atua como intermediaria entre a View e o Model, as ligando. Ela gerencia o estado e a lógica de
apresentação na interface

Vantagens

- Separação clara de responsabilidades do aplicativo
- Capacidade de escalar bem em projetos maiores
- Fácil manutenção
