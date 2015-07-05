.class public final enum Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashSwiperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeActivationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field public static final enum DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field public static final enum HOLD:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    const-string v1, "DOLLARS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 54
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    const-string v1, "HOLD"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->HOLD:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->HOLD:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->$VALUES:[Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->$VALUES:[Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    return-object v0
.end method
