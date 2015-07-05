.class public final Ladj$5;
.super Ladj$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladj;


# direct methods
.method public constructor <init>(Ladj;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Ladj$5;->a:Ladj;

    invoke-direct {p0, p2}, Ladj$c;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Ladj$5;->a:Ladj;

    invoke-static {v0}, Ladj;->b(Ladj;)V

    .line 188
    return-void
.end method
