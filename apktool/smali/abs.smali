.class public final Labs;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/IllegalArgumentException;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labs;->a:Ljava/lang/IllegalArgumentException;

    .line 17
    iput-object p2, p0, Labs;->b:Ljava/lang/String;

    .line 18
    return-void
.end method
