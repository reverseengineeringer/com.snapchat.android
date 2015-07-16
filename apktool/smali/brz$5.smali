.class final Lbrz$5;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrz;->a(Lbtc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtc;

.field final synthetic b:Lbrz;


# direct methods
.method constructor <init>(Lbrz;Lbtc;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lbrz$5;->b:Lbrz;

    iput-object p2, p0, Lbrz$5;->a:Lbtc;

    invoke-direct {p0}, Lbtt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lbrz$5;->b:Lbrz;

    iget-object v0, v0, Lbrz;->m:Lbsl;

    iget-object v1, p0, Lbrz$5;->a:Lbtc;

    invoke-virtual {v0, v1}, Lbsl;->a(Lbsx;)Z

    .line 500
    return-void
.end method
