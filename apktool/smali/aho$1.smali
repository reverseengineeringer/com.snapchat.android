.class public final Laho$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laho;


# direct methods
.method public constructor <init>(Laho;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Laho$1;->a:Laho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laho$1;->a:Laho;

    invoke-virtual {v0}, Laho;->b()V

    .line 64
    return-void
.end method
