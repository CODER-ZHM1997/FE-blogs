git add .
git commit -m "commit"
git push
if [ $? -eq 0 ]; then
    echo "提交成功！"
else
    echo "提交失败。请检查错误消息并解决问题。"
fi
read -p "按回车结束任务"