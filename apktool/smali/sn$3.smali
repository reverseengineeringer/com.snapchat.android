.class final Lsn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsn;


# direct methods
.method constructor <init>(Lsn;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lsn$3;->this$0:Lsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 272
    invoke-static {}, Lajx;->ai()V

    .line 274
    :cond_0
    return-void
.end method

.method public final a(Lsw;)V
    .locals 1
    .param p1    # Lsw;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 266
    new-instance v0, Lsm;

    invoke-direct {v0, p1}, Lsm;-><init>(Lsw;)V

    invoke-static {v0}, Lajx;->a(Lqn;)V

    .line 267
    return-void
.end method
