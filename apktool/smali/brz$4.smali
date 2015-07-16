.class public final Lbrz$4;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsv;

.field final synthetic b:Lbrz;


# direct methods
.method public constructor <init>(Lbrz;Lbsv;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lbrz$4;->b:Lbrz;

    iput-object p2, p0, Lbrz$4;->a:Lbsv;

    invoke-direct {p0}, Lbtt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lbrz$4;->b:Lbrz;

    iget-object v0, v0, Lbrz;->l:Lbsl;

    iget-object v1, p0, Lbrz$4;->a:Lbsv;

    invoke-virtual {v0, v1}, Lbsl;->a(Lbsx;)Z

    .line 487
    return-void
.end method
