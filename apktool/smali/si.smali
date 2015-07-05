.class public Lsi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blockers:Lta;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blockers"
    .end annotation
.end field

.field public field:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "field"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment"
    .end annotation
.end field

.field public type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
