
# Flutter Splash & Onboarding App

Este projeto Flutter demonstra a implementação de uma **splash screen nativa**, uma **splash Flutter animada com `ScaleTransition`**, um **onboarding interativo com `PageView`**, e uma **página de boas-vindas** com redirecionamento para a tela **Home**.

---

## Como executar

1. **Clone o repositório**  
   ```bash
   git clone https://github.com/seu-usuario/flutter-splash-onboarding.git
   cd flutter-splash-onboarding
   ```

2. **Instale as dependências**
   ```bash
   flutter pub get
   ```

---

4. **Execute o app**
   ```bash
   flutter run
   ```

---

## Estrutura de pastas

```
lib/
├── main.dart
├── screens/
│   ├── splash/
│   ├── onboarding/
│   ├── welcome/
│   └── home/
├── widgets/
```

---

## Funcionalidades

- ✅ Splash screen **nativa** via `flutter_native_splash`
- ✅ Splash Flutter com **animação de escala**
- ✅ Onboarding com **PageView**, imagens locais e textos explicativos
- ✅ Navegação até a **tela de boas-vindas**
- ✅ Redirecionamento para a **Home**

---


## Dependências principais

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_native_splash: ^2.3.5
```
