.class final Lahs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahs;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahs;


# direct methods
.method constructor <init>(Lahs;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lahs$1;->a:Lahs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lahs$1;->a:Lahs;

    invoke-virtual {v0}, Lahs;->d()V

    .line 66
    return-void
.end method
