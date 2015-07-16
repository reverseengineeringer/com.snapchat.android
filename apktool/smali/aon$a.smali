.class public final Laon$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Laka;

.field final b:Laxx;


# direct methods
.method public constructor <init>(Laka;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    new-instance v0, Laxx;

    invoke-direct {v0}, Laxx;-><init>()V

    invoke-direct {p0, p1, v0}, Laon$a;-><init>(Laka;Laxx;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Laka;Laxx;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laxx;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    iput-object v0, p0, Laon$a;->a:Laka;

    .line 71
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxx;

    iput-object v0, p0, Laon$a;->b:Laxx;

    .line 72
    return-void
.end method
