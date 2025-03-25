# Lodges-TV

Un système de présentation dynamique pour affichage sur écran, intégrant des diaporamas Google Slides et des informations météorologiques en temps réel.

![Lodges-TV Screenshot](https://votre-url-screenshot.example.com/screenshot.png)

## 🚀 Fonctionnalités

- **Diaporamas Google Slides intégrés** - Affiche vos présentations Google Slides en boucle
- **Informations météo** - Prévisions sur 4 jours avec OpenWeatherMap API
- **Données nautiques** - Température de l'eau et prévisions de vent
- **Rotation automatique** - Alterne entre les différentes vues à intervalles définis
- **Optimisation API** - Mise en cache des données et rechargement programmé pour limiter les appels API

## 📋 Prérequis

- Ruby on Rails (version utilisée par le projet)
- Navigateur moderne (Chrome, Firefox, Safari, Edge)
- Clés API pour OpenWeatherMap et Stormglass
- Une présentation Google Slides partagée publiquement

## ⚙️ Configuration

### Variables d'environnement

Créez un fichier `.env` à la racine du projet avec les variables suivantes :

```
OPENWEATHER_API_KEY=votre_clé_openweathermap
STORMGLASS_API_KEY=votre_clé_stormglass
```

### Personnalisation des coordonnées géographiques

Modifiez les constantes `LAT` et `LON` dans le fichier `app/views/screens/screen2.html.erb` pour définir votre emplacement :

```javascript
const LAT = 43.5; // Remplacez par votre latitude
const LON = 4.9;  // Remplacez par votre longitude
```

### Configuration du diaporama Google Slides

1. Créez une présentation Google Slides
2. Publiez-la sur le web (Fichier > Partager > Publier sur le web)
3. Copiez l'URL d'intégration
4. Remplacez la valeur `googleSlidesUrl` dans `screen2.html.erb`

## 🛠 Installation

1. Clonez le dépôt :
   ```
   git clone https://github.com/votre-utilisateur/lodges-tv.git
   cd lodges-tv
   ```

2. Installez les dépendances :
   ```
   bundle install
   ```

3. Configurez la base de données :
   ```
   rails db:create db:migrate
   ```

4. Lancez le serveur :
   ```
   rails server
   ```

5. Accédez à l'application via `http://localhost:3000/screens/screen2`

## 🖥️ Utilisation

*screen1.html.erb
Uniquement une présentation google slide


*screen2.html.erb
L'écran alterne automatiquement entre :
- **Google Slides** - Affiche votre présentation (8 slides × 15 secondes)
- **Météo** - Affiche les prévisions météorologiques sur 4 jours
- **Conditions nautiques** - Affiche le vent, la température de l'eau et les horaires solaires

Les données météorologiques et marines sont mises à jour deux fois par jour (6h et 12h) ou au rechargement de la page si le cache est ancien.

## 🔄 APIs utilisées

- **OpenWeatherMap API (One Call 3.0)** - Pour les prévisions météorologiques et données de vent
- **Stormglass API** - Pour la température de l'eau

## 📁 Structure du projet

```
lodges-tv/
├── app/
│   ├── views/screens/
│   │   ├── screen1.html.erb       # Vue uniquement un google slide
│   │   ├── screen2.html.erb       # Vue principale avec météo et données marines
├── public/                        # Fichiers statiques (CSS, images)
├── config/
│   ├── routes.rb                  # Configuration des routes de l'application
├── .env                           # Variables d'environnement (non inclus dans git)
└── README.md                      # Documentation du projet
```

## 🔧 Personnalisation

### Modifier les horaires de mise à jour

Changez la constante `UPDATE_HOURS` dans `screen2.html.erb` :

```javascript
const UPDATE_HOURS = [6, 12]; // Mise à jour à 6h et 12h
```

### Modifier la durée d'affichage des slides

Ajustez les constantes `regularSlideDuration` et `googleSlidesDuration` :

```javascript
const regularSlideDuration = 15000; // 15 secondes par écran régulier
const googleSlidesDuration = 120000; // 120 secondes pour Google Slides
```

### Personnalisation des styles (CSS)

Les styles de l'application sont définis dans le dossier `app/assets/stylesheets/`. Les principaux fichiers sont :

```
app/assets/stylesheets/
├── application.scss         # Fichier principal qui importe tous les autres styles
├── components/              # Styles des composants réutilisables
│   ├── _index.scss          # créer un fichier scss et ajouter dans index
└── pages/                   # Styles spécifiques aux pages
    └── _screens1.scss        # Styles des écrans d'affichage
    └── _screens2.scss        # Styles des écrans d'affichage
```

## ⚠️ Dépannage

### L'API renvoie trop d'appels

Vérifiez que la stratégie de rechargement programmé fonctionne correctement. L'application est configurée pour recharger la page seulement aux heures spécifiées dans `UPDATE_HOURS`.

### Les données météo ne s'affichent pas

- Vérifiez que vos clés API sont valides
- Vérifiez les coordonnées géographiques
- Ouvrez la console du navigateur pour voir les erreurs potentielles

## 📄 Licence

[MIT License](LICENSE)
