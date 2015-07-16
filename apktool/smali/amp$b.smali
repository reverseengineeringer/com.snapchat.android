.class public final Lamp$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lus;

.field public final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lus;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lamp$b;->a:Lus;

    .line 51
    iput-object p2, p0, Lamp$b;->b:Ljava/lang/Exception;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lamp$b;->b:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lamp$b;->a:Lus;

    invoke-virtual {v0}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
