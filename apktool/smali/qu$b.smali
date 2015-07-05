.class public Lqu$b;
.super Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public createdAt:J
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public recipientId:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_id"
    .end annotation
.end field

.field public senderId:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_id"
    .end annotation
.end field

.field public signature:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field public transactionId:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;-><init>()V

    return-void
.end method
