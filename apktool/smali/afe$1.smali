.class final Lafe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafe;


# direct methods
.method constructor <init>(Lafe;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lafe$1;->a:Lafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lafe$1;->a:Lafe;

    iget-object v0, v0, Lafe;->b:Landroid/widget/ImageView;

    new-instance v1, Lafe$1$1;

    invoke-direct {v1, p0}, Lafe$1$1;-><init>(Lafe$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
