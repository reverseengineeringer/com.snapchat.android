.class public final enum Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

.field public static final enum REGISTERED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

.field public static final enum VERIFIED_NEW_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

.field public static final enum VERIFIED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    const-string v1, "REGISTERED_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->REGISTERED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    .line 10
    new-instance v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    const-string v1, "VERIFIED_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    .line 11
    new-instance v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    const-string v1, "VERIFIED_NEW_NUMBER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NEW_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    sget-object v1, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->REGISTERED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NEW_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->$VALUES:[Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->$VALUES:[Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    return-object v0
.end method
