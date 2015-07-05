.class final Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    iput p2, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-static {v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 137
    :sswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 128
    :sswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 131
    :sswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 134
    :sswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 140
    :sswitch_4
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x7f02008b -> :sswitch_0
        0x7f020105 -> :sswitch_4
        0x7f020173 -> :sswitch_3
        0x7f020232 -> :sswitch_2
        0x7f020294 -> :sswitch_1
    .end sparse-switch
.end method
