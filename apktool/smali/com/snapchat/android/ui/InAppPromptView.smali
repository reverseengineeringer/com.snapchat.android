.class public Lcom/snapchat/android/ui/InAppPromptView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/InAppPromptView$2;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Laly;

.field private e:Lalx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Laly;

    invoke-direct {v0}, Laly;-><init>()V

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/ui/InAppPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laly;Lalx;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laly;Lalx;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/ui/InAppPromptView;->a:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/snapchat/android/ui/InAppPromptView;->d:Laly;

    .line 40
    iput-object p4, p0, Lcom/snapchat/android/ui/InAppPromptView;->e:Lalx;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/InAppPromptView;)Lalx;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView;->e:Lalx;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/InAppPromptView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0a025e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView;->b:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0a0263

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView;->c:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public set(Lalx$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/snapchat/android/ui/InAppPromptView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p1, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v2, Lcom/snapchat/android/ui/InAppPromptView$2;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f080047

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptView;->setBackgroundColor(I)V

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/ui/InAppPromptView;->b:Landroid/widget/ImageView;

    iget-object v0, p1, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v2, Lcom/snapchat/android/ui/InAppPromptView$2;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    const v0, 0x7f02015e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p1, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/snapchat/android/ui/InAppPromptView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 57
    iget-object v1, p0, Lcom/snapchat/android/ui/InAppPromptView;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lalx$a;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_2
    new-instance v0, Lcom/snapchat/android/ui/InAppPromptView$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/InAppPromptView$1;-><init>(Lcom/snapchat/android/ui/InAppPromptView;Lalx$a;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 53
    :pswitch_1
    const v0, 0x7f080040

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080007

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080052

    goto :goto_0

    .line 54
    :pswitch_4
    const v0, 0x7f020159

    goto :goto_1

    :pswitch_5
    const v0, 0x7f02015d

    goto :goto_1

    :pswitch_6
    const v0, 0x7f02015c

    goto :goto_1

    :pswitch_7
    const v0, 0x7f02015a

    goto :goto_1

    :pswitch_8
    const v0, 0x7f02015b

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lalx$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 54
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
