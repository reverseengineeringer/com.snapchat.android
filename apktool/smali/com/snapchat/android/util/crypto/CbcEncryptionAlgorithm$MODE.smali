.class public final enum Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

.field public static final enum DECRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

.field public static final enum ENCRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    const-string v1, "ENCRYPT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->ENCRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    .line 67
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    const-string v1, "DECRYPT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->DECRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    sget-object v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->ENCRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->DECRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->$VALUES:[Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->$VALUES:[Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    return-object v0
.end method
