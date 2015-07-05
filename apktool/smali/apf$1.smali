.class final Lapf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapf;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapf;


# direct methods
.method constructor <init>(Lapf;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lapf$1;->a:Lapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lapf$1;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)V

    .line 79
    return-void
.end method
