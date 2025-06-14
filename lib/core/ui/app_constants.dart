class AppConstants {
  static const String appName = 'Pizza Delivery';
  static const String signInMessage =
      'Faça seu login e saboreie a rapidez da entrega.';
  static const String signUpMessage =
      'Peça sua pizza favorita em segundos. Cadastre-se agora!';
  static const String email = 'Email';
  static const String password = 'Senha';
  static const String repeatPassword = 'Repetir senha';
  static const String yourName = 'Seu nome';
  static const String forgotPassword = 'Esqueceu a senha?';
  static const String enter = 'Entrar';
  static const String checkBoxTermsPart1 = 'Eu li e concordo com os ';
  static const String checkBoxTermsPart2 = 'Termos de Uso';
  static const String checkBoxTermsPart3 = ' e ';
  static const String checkBoxTermsPart4 = 'Termos de Privacidade.';
  static const String google = 'Google';
  static const String dontHaveAccount = 'Não tem uma conta?';
  static const String createAccountNow = 'Crie agora!';

  static const String onBoardingStepOneTitle = 'Preparando com paixão';
  static const String onBoardingStepOneTextPart1 =
      'Nossas pizzas são preparadas com ';
  static const String onBoardingStepOneTextBold1 = 'ingredientes frescos';
  static const String onBoardingStepOneTextPart2 = ' e ';
  static const String onBoardingStepOneTextBold2 = 'receitas artesanais';
  static const String onBoardingStepOneTextPart3 =
      ' que valorizam o tempo e a tradição. Cada fatia carrega o ';
  static const String onBoardingStepOneTextBold3 = 'sabor autêntico';
  static const String onBoardingStepOneTextPart4 =
      ' da nossa cozinha e o cuidado de quem realmente ama o que faz.';

  static const String onBoardingStepTwoTitle = 'Entrega rápida e quentinha';
  static const String onBoardingStepTwoTextBold1 = 'Do forno à sua porta';
  static const String onBoardingStepTwoTextPart1 =
      ', preservando o calor, a crocância e todo o sabor que você merece — porque cada entrega é feita com';
  static const String onBoardingStepTwoTextBold2 = ' agilidade e cuidado';
  static const String onBoardingStepTwoTextPart2 = ', para que ';
  static const String onBoardingStepTwoTextBold3 = 'sua pizza chegue perfeita';
  static const String onBoardingStepTwoTextPart3 =
      ', como se tivesse acabado de sair da nossa cozinha.';

  static const String onBoardingStepThreeTitle =
      'Compartilhe momentos deliciosos';
  static const String onBoardingStepThreeTextBold1 = 'Aproveite nossas pizzas ';
  static const String onBoardingStepThreeTextPart1 = 'com quem você ama, ';
  static const String onBoardingStepThreeTextBold2 = ' a qualquer hora ';
  static const String onBoardingStepThreeTextPart3 =
      ' — porque bons momentos ficam ainda melhores quando são ';
  static const String onBoardingStepThreeTextBold3 =
      'compartilhados com sabor, risos e companhia especial.';
  static const String requiredField = 'Campo obrigatório';
  static const String passwordRegex =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*d)(?=.*[!@#\$&*~^%()_+={}[]|\\:;"\<>,.?/-]).{8,}$';
  static const String emailRegex =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  static const String enterValidEmail = 'Digite um email válido';
  static const String regexPasswordCaracteres = r'.{8,}';
  static const String invalidPasswordCaracteres =
      'A senha deve ter no mínimo 8 caracteres.';
  static const String regexPasswordUpercase = r'[A-Z]';
  static const String invalidPasswordUppercase =
      'A senha deve conter ao menos uma letra maiúscula.';
  static const String regexPasswordLowcase = r'[a-z]';
  static const String invalidPasswordLowcase =
      'A senha deve conter ao menos uma letra minúscula.';
  static const String regexPasswordNumber = r'\d';
  static const String invalidPasswordNumber =
      'A senha deve conter ao menos um número.';
  static const String regexPasswordSymbol = r'[!@#\$&*~]';
  static const String invalidPasswordSymbol =
      'A senha deve conter ao menos um símbolo (ex: !@#\$&*~).';

  static const String invalidRepeatPassword = 'As senhas não combinam.';
  static const String invalidYourNameLenght =
      'Seu nome deve ter no mínimo 3 caracteres.';
  static const String invalidYourName =
      'Seu nome pode começar com números ou símbolos';
  static const String regexInvalidYourName = r'^[^a-zA-Z]';
}
