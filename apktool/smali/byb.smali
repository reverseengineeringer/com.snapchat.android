.class public final Lbyb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lbyb;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lbyb;->b:Lcar;

    .line 41
    iput-object p1, p0, Lbyb;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lbyb;->b:Lcar;

    .line 43
    return-void
.end method
