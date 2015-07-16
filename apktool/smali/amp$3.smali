.class final Lamp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamp$a;

.field final synthetic b:Lus;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lamp;


# direct methods
.method constructor <init>(Lamp;Lamp$a;Lus;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lamp$3;->d:Lamp;

    iput-object p2, p0, Lamp$3;->a:Lamp$a;

    iput-object p3, p0, Lamp$3;->b:Lus;

    iput-object p4, p0, Lamp$3;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lamp$3;->a:Lamp$a;

    new-instance v1, Lamp$b;

    iget-object v2, p0, Lamp$3;->b:Lus;

    iget-object v3, p0, Lamp$3;->c:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Lamp$b;-><init>(Lus;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lamp$a;->a(Lamp$b;)V

    .line 182
    return-void
.end method
