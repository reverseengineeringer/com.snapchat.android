.class public final enum Lcom/snapchat/android/fragments/settings/password/PasswordStrength;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/settings/password/PasswordStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field public static final enum MEDIUM:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field public static final enum STRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field public static final enum TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field public static final enum UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field public static final enum VERYSTRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    const-string v1, "TOO_WEAK"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 12
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->MEDIUM:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 13
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->STRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 14
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    const-string v1, "VERYSTRONG"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->VERYSTRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 15
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->MEDIUM:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->STRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->VERYSTRONG:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->$VALUES:[Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/password/PasswordStrength;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/password/PasswordStrength;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "PasswordStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid enum for the PasswordStrength "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/password/PasswordStrength;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/settings/password/PasswordStrength;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->$VALUES:[Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    return-object v0
.end method
