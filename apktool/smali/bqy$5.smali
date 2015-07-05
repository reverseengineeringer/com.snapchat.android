.class final Lbqy$5;
.super Lbss;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqy;->a(Lbsb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsb;

.field final synthetic b:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Lbsb;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lbqy$5;->b:Lbqy;

    iput-object p2, p0, Lbqy$5;->a:Lbsb;

    invoke-direct {p0}, Lbss;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lbqy$5;->b:Lbqy;

    iget-object v0, v0, Lbqy;->m:Lbrk;

    iget-object v1, p0, Lbqy$5;->a:Lbsb;

    invoke-virtual {v0, v1}, Lbrk;->a(Lbrw;)Z

    .line 500
    return-void
.end method
