.class public final Lbqy$4;
.super Lbss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbru;

.field final synthetic b:Lbqy;


# direct methods
.method public constructor <init>(Lbqy;Lbru;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lbqy$4;->b:Lbqy;

    iput-object p2, p0, Lbqy$4;->a:Lbru;

    invoke-direct {p0}, Lbss;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lbqy$4;->b:Lbqy;

    iget-object v0, v0, Lbqy;->l:Lbrk;

    iget-object v1, p0, Lbqy$4;->a:Lbru;

    invoke-virtual {v0, v1}, Lbrk;->a(Lbrw;)Z

    .line 487
    return-void
.end method
