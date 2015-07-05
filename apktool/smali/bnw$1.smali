.class final Lbnw$1;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnw;->a(ILbni;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lbni;

.field final synthetic d:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILbni;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lbnw$1;->d:Lbnw;

    iput p4, p0, Lbnw$1;->b:I

    iput-object p5, p0, Lbnw$1;->c:Lbni;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lbnw$1;->d:Lbnw;

    iget v1, p0, Lbnw$1;->b:I

    iget-object v2, p0, Lbnw$1;->c:Lbni;

    invoke-virtual {v0, v1, v2}, Lbnw;->b(ILbni;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
