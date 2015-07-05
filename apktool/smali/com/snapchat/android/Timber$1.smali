.class final Lcom/snapchat/android/Timber$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lcom/snapchat/android/Timber$LogType;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/snapchat/android/Timber$LogType;ZLjava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    iput-boolean p4, p0, Lcom/snapchat/android/Timber$1;->d:Z

    iput-object p5, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snapchat/android/Timber$1;->f:Z

    iput-object p7, p0, Lcom/snapchat/android/Timber$1;->g:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    sget-object v1, Lcom/snapchat/android/Timber$3;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v2}, Lcom/snapchat/android/Timber$LogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 198
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_3
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->g:Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_6
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_7
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->f:Z

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
