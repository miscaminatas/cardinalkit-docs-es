---
home: false
title: Set Up Backend Infrastructure
footer: CardinalKit
order: 2
---

# Configurar la infraestructura de Backend

<img src="./images/doctors.svg" alt="Doctors using apps" width="250"><br />

Antes de CardinalKit, los investigadores necesitaban implementar una solución de backend de su elección para que los datos que recopilaban los usuarios pudieran almacenarse de forma segura. CardinalKit aprovecha la arquitectura de la base de datos existente en la plataforma Google Cloud para que sea lo más fácil posible para comenzar a recopilar información sobre sus usuarios.

<img src="./images/connect.svg" alt="drawing" width="250"/><br />

## 1. Crear una cuenta en Firebase

Dirígete a <a href="https://firebase.google.com">firebase.google.com</a> y configura una cuenta.
Nota: es posible que deba usar su correo electrónico personal en lugar del asignado por su universidad.

Una vez que haya creado su cuenta, inicie sesión en su consola Firebase (arriba a la derecha) y agregue un nuevo proyecto. Nombre el proyecto para que sea algo relacionado con su aplicación para futuras referencias.

<img src="./images/firebase-addproject.png" alt="Add a new Firebase Project" width="500" />

<br />
<br />
Es importante que deshabilite "Google Analytics" porque no es compatible con BAA y luego haga clic en "Crear". Tardará alrededor de un minuto en configurarse.
<br />
<br />

<img src="./images/google-analytics.png" alt="Disable Google Analytics" width="400"/>

<br />
<br />
Cuando su proyecto esté listo, haga click en "Continuar" ("Continue"). 
<br />
<br />

<img src="./images/firebase-ready.png" alt="Your project is ready" width="500" />

Ahora volverás a la consola. Haga clic en "Firestore Database" en la sección "Crear" en la barra lateral y luego en "Crear base de datos" (Create Database).
<br />
<br />

<img src="./images/firebase-database.png" alt="Create a firestore database" width="950"/>

<br />
<br />

Asegúrese de iniciar la base de datos en modo de prueba para que su IT de investigación pueda configurar las reglas para el almacenamiento.

<br />

::: Advertencia
Al desarrollar y probar su aplicación, está bien usar su propio backend de Firebase personalizado. Sin embargo, en producción, es más fácil transferir el mantenimiento de la base de datos a su departamento de IT (por ejemplo, TI de Stanford Medicine). Se garantizará que su configuración cumpla con HIPAA.
:::

<img src="./images/database-setup-1.png" alt="Set your database to test mode" width="450"/>

<br />
<br />

Finalmente, establecer la ubicación de implementación en "us-central" o cualquier ubicación cercana a usted y haga clic en "Enable".

<br />

<img src="./images/database-setup-2.png" alt="Choose the deploy location" width="450"/>

## 2. Link App to Firebase Project

The last step is to configure your CardinalKit app to communicate with your newly created Firebase database. In the sidebar, select "Project Overview" and then "iOS".

<br />

<img src="./images/project-overview.png" alt="Creating a new iOS config in Firebase" width="650"/>

<br />
<br />


Fill out the registration form using the bundle ID you selected on while creating your CardinalKit project in Xcode from Step 4 of the previous section. You do not need to answer the other questions.

<br />
<br />

<img src="./images/registration.png" alt="Registering your CardinalKit app with Firebase" width="650"/>

<br />
<br />

Download the "GoogleService-Info.plist" file when prompted. Keep a note of where this file was downloaded on your computer.

<img src="./images/plist.png" alt="Link Firebase to App - Step 1" width="800"/>

<br />

There will be a "GoogleService-Info.plist" in the Xcode project as well located in "CardinalKit-Example" > "CardinalKit" > "Supporting Files". Delete the existing file and drag in the new file that you just downloaded in the previous step. Run the app again and make sure no errors pop up.

<img src="./images/google-plist.png" alt="Link Firebase to App - Step 2" width="800">

<br />
<br />
You don't need to continue through the rest of the steps and set up the Firebase SDK and initialization code in your app. This is already done for you in CardinalKit. Go through to step 5 and click on "Continue to Console".
<br />
<br />

## 3. Setting up Email/Password Authentication

In Xcode, open the CKConfiguration.plist file in Xcode and edit the **Enabled** key under the **Sign in with User/Password** key to **1**. (If you have just cloned the project, this is already done for you.)

<br />

<img src="./images/email_authentication-1.png" alt="Email/Password Authentication Setup Step 1" width="800">

<br />

In your Firebase console, click on "Authentication", then click on "Email/Password". 

<img src="./images/email_authentication-2.png" alt="Email/Password Authentication Setup Step 2" width="800"/>

::: tip
If you have already set up an authentication method and are adding another one, you will see a different screen at this step. In that case, click on "Sign-In Method" at the top and click "Add New Provider", instead.
:::

<br />

On the next screen, enable "Email/Password Sign On" and click "Save".

<img src="./images/email_authentication-3.png" alt="Email/Password Authentication Setup Step 3" width="800" />

<br />

You should now see that Email/Password authentication has been enabled.

## 4. Setting up Sign in with Apple (Optional)

Read the entire "Before You Begin" section of the Authenticate Using Apple on iOS Firebase tutorial and make sure you have the correct configurations for this feature.

In your Firebase project, navigate to "Authentication" > "Sign-in method" and click on "Add Provider".

<img src="./images/apple-sign-in-step1.png" alt="Apple Sign In Setup Step 1" width="800" />

<br />

Now select "Apple".

<img src="./images/apple-sign-in-step2.png" alt="Apple Sign In Setup Step 2" width="650" />

<br />

Set Apple to "Enabled".

<img src="./images/apple-sign-in-step3.png" alt="Apple Sign In Setup Step 3" width="650" />

<br />

The last step is to open the CKConfiguration.plist file in Xcode and edit the **Enabled** key under the **Sign in with Apple** key to **1**.

## 5. Setting up Sign In With Google (Optional)

First, open your Firebase console, click on the "Authentication" tab, then click on "Sign In Method", then click on "Add New Provider".

<img src="./images/google-setup-step-1.png" alt="Google Sign In Setup Step 1" width="800" />

<br />

Now, click on "Google" in the list of sign-in providers.

<br />

<img src="./images/google-setup-step-2.png" alt="Google Sign In Setup Step 2" width="800" />

<br />

Then, fill in your project's public facing name, choose a project support email address, and click "Save".

<br />

<img src="./images/google-setup-step-3.png" alt="Google Sign In Setup Step 3" width="800" />

<br />

Next, you will need to create a custom URL scheme in your Xcode project. In Xcode, open your CardinalKit project and double-click the project name in the navigator view on the left. Select your project from the "Targets" section and then select the "Info" tab and expand the "URL Types" section.

<img src="./images/google-setup-step-4.png" alt="Google Sign In Setup Step 4" width="800" />

<br />

Click the **+** button and a URL scheme with your Reversed Client ID. This can be found by opening your **GoogleService-Info.plist** file and looking for the **REVERSED_CLIENT_ID** key. When this is complete your project should look like this:

<img src="./images/google-setup-step-5.png" alt="Google Sign In Setup Step 5" width="800" />

<br />

The last step is to open the CKConfiguration.plist file in Xcode and edit the **Enabled** key under the **Sign in with Google** key to **1**.

<img src="./images/google-setup-step-6.png" alt="Google Sign In Setup Step 6" width="800" />

## 6. Add Custom Rules to the Firebase Database

The final step is to allow authorized users to upload data to Firebase.

<img src="./images/10.gif" alt="drawing" width="650"/><br />
 
Navigate to the "Firestore Database" tab in your Firebase dashboard. Find the "Rules" section and edit the text to match the following rule set.

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents/studies/{studyId}/users {
    match /{userId}/{document=**} {
      allow read, write: if request.auth.uid != null;
    }
  }
  match /databases/{database}/documents/studies/{studyId}/carekit-store {
    match /{document=**} {
      allow read, write: if request.auth.uid != null;
    }
   }
}
```

Now navigate to the "Storage" tab in your Firebase dashboard. Find the "Rules" section there and add the following rules which will allow users to upload files to Cloud Storage (including the signed consent PDF generated during onboarding). You will need to change "edu.stanford.cardinalkitexample" in line 3 to the bundle identifier of your app.

```
rules_version = '2';
service firebase.storage {
   match /b/{bucket}/o/studies/edu.stanford.cardinalkitexample {
      match /users/{userId}/{file} {
         allow read, write: if request.auth.uid == userId;
      }
   }
}
```

Congrats! You're now set up to use CardinalKit as a starting point for your research app - run the app within Xcode and test it out!

<br />

<img src="./images/celebrate.svg" alt="drawing" width="350"/><br />

