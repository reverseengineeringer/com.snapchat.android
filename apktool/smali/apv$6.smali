.class final Lapv$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;


# direct methods
.method constructor <init>(Lapv;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lapv$6;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lapv$6;->a:Lapv;

    invoke-static {v0}, Lapv;->e(Lapv;)V

    .line 273
    return-void
.end method
