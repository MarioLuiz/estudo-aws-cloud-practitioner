# estudo-aws-cloud-practitioner
Repositórios com minhas anotações dos estudos realizados para fazer o exame AWS Certified Cloud Practitioner (CLF-C01).
Cloud Computing

Benefícios da Nuvem
1. Velocidade -> Soluções (Segundos)
2. Updates -> AWS (Sem interromper o serviço)
3. Custo -> Baixo custo
4. Data Security -> Backup
5. Escalabilidade - Scalability -> Pode ser Automática ou Manual em Segundos

Tipos de Cloud

IaaS -> InfraStructure as a service (Infraestrutura como um serviço) paga para utilizar a infraestrutura de alguém como um serviço.

PaaS -> Plataforma as a service (Plataforma como um serviço) paga para usar a plataforma como um serviço.

SaaS -> Software as a service (O software como um serviço)

![image](https://user-images.githubusercontent.com/11471499/197096921-41fcbe59-193e-4cad-a549-d0d733fe2941.png)

Tipos de Redes na Nuvem

![image](https://user-images.githubusercontent.com/11471499/197096964-89def4a7-d2a5-4995-b905-f3a5acf14814.png)

O que é um Serviço  ? Qualquer coisa na nuvem que você possa: Iniciar, Configurar e Finalizar.

Shared Responsability Model

Modelo de responsabilidade compartilhada

AWS é responsável pela segurança da Cloud
O cliente é responsável pela segurança dentro da Nuvem
![image](https://user-images.githubusercontent.com/11471499/197096986-f69cb783-fa8f-4349-a2f3-1b6ca3bd3ac0.png)

Para saber mais acesse: https://aws.amazon.com/pt/compliance/shared-responsibility-model/

Console = O próprio site da AWS

CLI = Command line Interface

CloudShell = Command line Interface on Cloud

----------++++++++++----------++++++++++----------++++++++++----------++++++++++----------

Infraestrutura Global da AWS

Os serviços disponibilizados pela AWS são liberados por região, ou seja, temos que verificar quais serviçoes estão disponiveis na regiao em que você vai utilizar.

Regiões AWS
 
Os nomes das regiões são dados conforme o pais e local onde elas estão localizadas Ex: us-east-2 (Siginigica que está regiao fica nos Estados Unidos na parte leste e é a 2 unidade nesta area)

Zonas de Disponibilidade

Dentro de cada região temos uma ou varias zonas de disponibilidades ( AZ ) que são os proprios Data Center.

Zonas Locais AWS

Ficam próximas as Zonas de disponibilidades e conectadas a elas.

AWS Wavelenght

São servidores que ficam dentro de uma Operadora de Telefonia/Internet (TIM, CLARO, OI, VIVO) que tem conexão direta com as Zonas de Disponibilidade mais proxima.

AWS OutSpots

AWS coloca os equipamentos dela (Servidor) dentro de Data Centers de terceiros ou espaço de accommodation .

----------++++++++++----------++++++++++----------++++++++++----------++++++++++----------

IAM = Identity Access Management

Recurso da AWS Servless que você tem privilégio ou não para iniciar/executar qualquer ação dentro da AWS, através dele você consegue criar/gerenciar: Usuarios, regras, Federed Users, Aplications, grupos.

Tipos de Politica 

IBP  = Identity Base Policy
RBP = Resource Base Policy

Quando um usuário é criado ele pode acessar sua conta (Console, CLI e API), mas vem sem privilégios, ou seja sem permições.

Grupos são criados para organizar os usuários.

Roles podem ser aplicadas a serviços.

Police são regras onde você pode permitir acesso a determinado serviço a Grupos ou Usuários.

Todos os privilégios do usuário são descritos em Json, sempre que que um usuário pede/acessa determinado serviço 1 coisa a ser verificada é esse docmento Json e quais os privilégios dele.

Usuário Logando via console é solicitado: nome, senha, MFA (Opcional).
Usuário Logando via CLI/API é solicitado: Acces Key ID, Secret Access key.

MFA =  Multi Factor Authentication

----------++++++++++----------++++++++++----------++++++++++----------++++++++++----------

Instancias EC2

Vitualização na AWS é o EC2, 
EC2 = Elastic Compute Cloud

A virtualização é uma técnica que permite a criação de uma máquina virtual para funcionar dentro do sistema de um PC/Servidor. O processo permite, por exemplo, a execução de sistemas operacionais completos ou uma simulação do comportamento do sistema para quem trabalha com desenvolvimento de software e testes de segurança.

Instancias EC2

Virtualização na AWS é o EC2, 
EC2 = Elastic Compute Cloud

A virtualização é uma técnica que permite a criação de uma máquina virtual para funcionar dentro do sistema de um PC/Servidor. O processo permite, por exemplo, a execução de sistemas operacionais completos ou uma simulação do comportamento do sistema para quem trabalha com desenvolvimento de software e testes de segurança.

Vantagens do EC2

- Controle Completo sobre a instancia, Ex: Aumentar memória, Aumentar Ram e etc.
- Segurança
- AWS services : Acesso direto a todos outros serviços da AWS
- Low Cost: Baixo custo
- Unconplicated : muito facil criar instancias EC2

User Data

User data é o código (Batch ou PowerShell dependendo do SO) que você coloca para rodar apenas uma vez quando sua instância for iniciada.
![image](https://user-images.githubusercontent.com/11471499/199140795-288efdae-9ef6-4df1-b9d3-c014905b99ec.png)


Acessando dados S3 via EC2

1 Modo- Está maneira não é tão recomendada pois pode salva o acces key e secret do usuário IAM na maquina EC2, então se a maquina for invadida esses dados estarão visiveis.
Para configurar precisa acessar o pront de comando e colocar "aws configure" e colocar preencher com as informações.

2 Modo - Maneira recomendada Criar uma Role no IAM para EC2 de acesso ao S3 e depois ir nas instancias EC2, Selecionar a instancia > Acations > Security > Modify iam role, selecionar a role que criou.

AWS Batch = LOTE/GRUPO

Serviço da AWS que foi criado para rodar scripts em lotes/Grupos.

![image](https://user-images.githubusercontent.com/11471499/202064102-dbfbf1b1-6cf5-4412-83a8-2c4e20d6f987.png)


