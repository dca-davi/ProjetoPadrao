#language: pt

@RELATORIOS_BANDEIRAS
Funcionalidade: Validar os direitos nos menus Relatorios > bandeiras

Contexto:
Dado que eu faca login

@RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER"
E que tenha/nao tenha acesso na tela "Controle de remessas"
Entao o sistema exibira/nao exibira a tela "Controle de remessas"

@RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER"
E que tenha/nao tenha acesso na tela "Controle de reapresentações"
Entao o sistema exibira/nao exibira a tela "Controle de reapresentações"

@RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER"
E que tenha/nao tenha acesso na tela "Controle de ação de chargeback"
Entao o sistema exibira/nao exibira a tela "Controle de ação de chargeback"
