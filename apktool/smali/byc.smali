.class public final Lbyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcar;

.field b:Lcar;


# direct methods
.method public constructor <init>(Lcar;Lcar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lbyc;->a:Lcar;

    .line 30
    iput-object v0, p0, Lbyc;->b:Lcar;

    .line 42
    iput-object p1, p0, Lbyc;->a:Lcar;

    .line 43
    iput-object p2, p0, Lbyc;->b:Lcar;

    .line 44
    return-void
.end method
