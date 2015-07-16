.class public Lst$b;
.super Lsy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public cardToken:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lsy;-><init>()V

    return-void
.end method
