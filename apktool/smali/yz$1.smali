.class final Lyz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyz;->a(Lmo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmo;

.field final synthetic b:Lyz;


# direct methods
.method constructor <init>(Lyz;Lmo;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lyz$1;->b:Lyz;

    iput-object p2, p0, Lyz$1;->a:Lmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lyz$1;->b:Lyz;

    iget-object v1, p0, Lyz$1;->a:Lmo;

    invoke-virtual {v0, v1}, Lyz;->b(Lmo;)V

    .line 136
    return-void
.end method
