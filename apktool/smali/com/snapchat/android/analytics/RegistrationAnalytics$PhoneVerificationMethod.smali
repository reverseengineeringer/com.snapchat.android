.class public final enum Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/RegistrationAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneVerificationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

.field public static final enum CALL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

.field public static final enum CANCEL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

.field public static final enum TEXT:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->TEXT:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    .line 60
    new-instance v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CALL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    .line 61
    new-instance v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CANCEL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    sget-object v1, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->TEXT:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CALL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CANCEL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->$VALUES:[Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->$VALUES:[Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    return-object v0
.end method
