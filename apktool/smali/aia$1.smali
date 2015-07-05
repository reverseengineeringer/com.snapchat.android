.class final Laia$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laia;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Laia$1;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Laia$1;->a:Laia;

    invoke-virtual {v0}, Laia;->b()V

    .line 59
    return-void
.end method
