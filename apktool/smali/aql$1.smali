.class final Laql$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laql;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laql;


# direct methods
.method constructor <init>(Laql;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Laql$1;->a:Laql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laql$1;->a:Laql;

    invoke-static {v0}, Laql;->a(Laql;)Z

    .line 90
    return-void
.end method
