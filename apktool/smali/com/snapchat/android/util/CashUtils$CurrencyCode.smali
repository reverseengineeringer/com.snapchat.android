.class public final enum Lcom/snapchat/android/util/CashUtils$CurrencyCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/CashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/CashUtils$CurrencyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field public static final enum USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    const-string v1, "USD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->$VALUES:[Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->$VALUES:[Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/CashUtils$CurrencyCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method
