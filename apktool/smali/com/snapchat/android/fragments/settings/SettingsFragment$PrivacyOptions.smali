.class public final enum Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacyOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

.field public static final enum CUSTOM:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

.field public static final enum EVERYONE:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

.field public static final enum FRIENDS:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    const-string v1, "EVERYONE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->EVERYONE:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->FRIENDS:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->CUSTOM:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    sget-object v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->EVERYONE:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->FRIENDS:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->CUSTOM:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->$VALUES:[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->$VALUES:[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    return-object v0
.end method
