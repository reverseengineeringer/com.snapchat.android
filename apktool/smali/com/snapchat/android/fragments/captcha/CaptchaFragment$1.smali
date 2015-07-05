.class final Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;
.super Lafo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/content/Context;Ljava/util/List;Lafo$a;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->b:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {p0, p2, p3, p4}, Lafo;-><init>(Landroid/content/Context;Ljava/util/List;Lafo$a;)V

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->b:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isClickable()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->b:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isClickable()Z

    move-result v0

    return v0
.end method
