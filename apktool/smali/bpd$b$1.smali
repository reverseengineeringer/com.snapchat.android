.class final Lbpd$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpd$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lbpd$b;


# direct methods
.method constructor <init>(Lbpd$b;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lbpd$b$1;->b:Lbpd$b;

    iput-object p2, p0, Lbpd$b$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 627
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lbpd$b$1;->a:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
