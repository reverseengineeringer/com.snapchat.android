.class public Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    }
.end annotation


# instance fields
.field public status:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation build Lchc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->status:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    return-object v0
.end method
