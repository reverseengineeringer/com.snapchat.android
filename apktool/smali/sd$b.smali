.class public Lsd$b;
.super Lsi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public cardToken:Ljava/lang/String;
    .annotation build Lcgc;
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
    invoke-direct {p0}, Lsi;-><init>()V

    return-void
.end method
