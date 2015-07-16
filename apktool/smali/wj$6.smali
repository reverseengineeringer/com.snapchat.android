.class final Lwj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwj;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwj;


# direct methods
.method constructor <init>(Lwj;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lwj$6;->a:Lwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lwj$6;->a:Lwj;

    invoke-virtual {v0}, Lwj;->g()V

    .line 216
    return-void
.end method
