.class public final Lcom/google/android/gms/common/GooglePlayServicesUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/GooglePlayServicesUtil$zza;
    }
.end annotation


# static fields
.field public static final GMS_ERROR_DIALOG:Ljava/lang/String; = "GooglePlayServicesErrorDialog"

.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I = 0x6c42d8

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field public static zzLD:Z

.field public static zzLE:Z

.field private static zzLF:I

.field private static final zzLG:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLD:Z

    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLE:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected static getErrorNotificationId(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0x9b6d

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x28c4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzan(I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "UNKNOWN_ERROR_CODE"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_4
    const-string v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_5
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_6
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_8
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_9
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_a
    const-string v0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_b
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_c
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_d
    const-string v0, "API_UNAVAILABLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static getOpenSourceSoftwareLicenseInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android.resource"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "raw"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "oss_notice"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-boolean v4, Lcom/google/android/gms/common/internal/zze;->zzPq:Z

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    sget-boolean v4, Lcom/google/android/gms/common/internal/zze;->zzPq:Z

    if-nez v4, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzJ(Landroid/content/Context;)V

    :cond_1
    :try_start_1
    const-string v4, "com.google.android.gms"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzhP()Lcom/google/android/gms/common/zzc;

    move-result-object v5

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zzlu;->zzbd(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlu;->zzQ(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    sget-object v6, Lcom/google/android/gms/common/zzb$zzaq;->zzLC:[Lcom/google/android/gms/common/zzb$zza;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzb$zza;)Lcom/google/android/gms/common/zzb$zza;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_2
    const-string v6, "com.android.vending"

    const/16 v7, 0x40

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/common/zzb$zzaq;->zzLC:[Lcom/google/android/gms/common/zzb$zza;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzb$zza;)Lcom/google/android/gms/common/zzb$zza;

    move-result-object v6

    if-eqz v6, :cond_3

    new-array v7, v2, [Lcom/google/android/gms/common/zzb$zza;

    aput-object v6, v7, v1

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzb$zza;)Lcom/google/android/gms/common/zzb$zza;

    move-result-object v5

    if-eqz v5, :cond_3

    :cond_5
    const v0, 0x6c42d8

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlu;->zzbb(I)I

    move-result v0

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Lcom/google/android/gms/internal/zzlu;->zzbb(I)I

    move-result v5

    if-ge v5, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google Play services out of date.  Requires 7095000 but found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v0, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GooglePlayServicesUtil"

    const-string v3, "Google Play services missing when getting application info."

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v0, p4}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object v0

    const-string v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, p4}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v0

    const-string v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Activity does not support Fragments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showErrorNotification(ILandroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2a

    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzh(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzi(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzK(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static zzI(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzan(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string v3, "Google Play Services not available"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_1
    return-void
.end method

.method private static zzJ(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x6c42d8

    if-ne v0, v1, :cond_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GooglePlayServicesUtil"

    const-string v3, "This should never happen."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected 7095000 but found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzK(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesUtil$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil$zza;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static zzL(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static zzM(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static zza(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2a

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkg()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Theme.Dialog.Alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zze(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzan(I)Landroid/content/Intent;

    move-result-object v3

    if-nez p2, :cond_4

    new-instance v1, Lcom/google/android/gms/common/internal/zzg;

    invoke-direct {v1, p1, v3, p3}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    sparse-switch p0, :sswitch_data_0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/common/internal/zzg;

    invoke-direct {v1, p2, v3, p3}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_0
    move-object v0, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_4
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_5
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_6
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_7
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_a
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_c
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_d
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_a
        0x6 -> :sswitch_1
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method private static zza(ILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_error_notification_requested_by_msg:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v5}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzQ(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkh()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzx;->zzN(Z)V

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/google/android/gms/R$drawable;->common_ic_googleplayservices:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$drawable;->common_full_open_on_phone:I

    sget v4, Lcom/google/android/gms/R$string;->common_open_on_phone:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorNotificationId(I)I

    move-result v2

    invoke-virtual {v0, p2, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_0
    sget v4, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/Notification;

    const v5, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v0, Landroid/app/Notification;->flags:I

    :cond_1
    :goto_2
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.support.localOnly"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorNotificationId(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public static zza(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkj()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static zza(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkd()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzb(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static zzan(I)Landroid/content/Intent;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzo;->zzbl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/google/android/gms/common/internal/zzo;->zzjl()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzo;->zzbj(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic zzb(ILandroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(ILandroid/content/Context;)V

    return-void
.end method

.method public static zzb(Landroid/content/pm/PackageManager;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLG:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    :try_start_1
    const-string v3, "com.google.android.gms"

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzhP()Lcom/google/android/gms/common/zzc;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/common/zzb$zza;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/common/zzb;->zzLv:[Lcom/google/android/gms/common/zzb$zza;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzb$zza;)Lcom/google/android/gms/common/zzb$zza;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_3
    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_4
    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLF:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzhP()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/zzc;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static zzb(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkf()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static zzc(Landroid/content/pm/PackageManager;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzb(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzhO()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzd(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zze(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zza(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    sget v1, Lcom/google/android/gms/R$string;->commono_google_play_services_api_unavailable_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_7
        0x11 -> :sswitch_8
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method public static zzf(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public static zzg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_notification_needs_installation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_notification_needs_update_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_notification_needs_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_needs_enabling_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    sget v1, Lcom/google/android/gms/R$string;->commono_google_play_services_api_unavailable_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_7
        0x11 -> :sswitch_8
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method private static zzg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzh(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzhO()Z
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzLE:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static zzi(Landroid/content/Context;I)Z
    .locals 1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
