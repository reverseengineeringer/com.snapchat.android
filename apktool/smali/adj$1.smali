.class public final Ladj$1;
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
    .line 176
    iput-object p1, p0, Ladj$1;->a:Ladj;

    invoke-direct {p0, p2}, Ladj$c;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Ladj$1;->a:Ladj;

    invoke-static {v0}, Ladj;->a(Ladj;)V

    .line 180
    return-void
.end method
